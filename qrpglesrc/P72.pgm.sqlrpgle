**free

ctl-opt dftactgrp(*no);

dcl-pi P72;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'

dcl-ds theTable extname('T1207') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1207 LIMIT 1;

theCharVar = 'Hello from P72';
dsply theCharVar;
callp localProc();
P54();
P34();
P31();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P72 in the procedure';
end-proc;