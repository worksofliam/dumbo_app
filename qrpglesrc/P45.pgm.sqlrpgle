**free

ctl-opt dftactgrp(*no);

dcl-pi P45;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds theTable extname('T578') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T578 LIMIT 1;

theCharVar = 'Hello from P45';
dsply theCharVar;
callp localProc();
P37();
P34();
P3();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P45 in the procedure';
end-proc;