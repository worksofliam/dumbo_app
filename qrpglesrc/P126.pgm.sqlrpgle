**free

ctl-opt dftactgrp(*no);

dcl-pi P126;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P115.rpgleinc'

dcl-ds theTable extname('T11') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T11 LIMIT 1;

theCharVar = 'Hello from P126';
dsply theCharVar;
callp localProc();
P19();
P10();
P115();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P126 in the procedure';
end-proc;