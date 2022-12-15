**free

ctl-opt dftactgrp(*no);

dcl-pi P4475;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P903.rpgleinc'
/copy 'qrpgleref/P536.rpgleinc'
/copy 'qrpgleref/P2149.rpgleinc'

dcl-ds theTable extname('T1545') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1545 LIMIT 1;

theCharVar = 'Hello from P4475';
dsply theCharVar;
callp localProc();
P903();
P536();
P2149();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4475 in the procedure';
end-proc;