**free

ctl-opt dftactgrp(*no);

dcl-pi P903;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P323.rpgleinc'
/copy 'qrpgleref/P604.rpgleinc'
/copy 'qrpgleref/P887.rpgleinc'

dcl-ds theTable extname('T152') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T152 LIMIT 1;

theCharVar = 'Hello from P903';
dsply theCharVar;
callp localProc();
P323();
P604();
P887();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P903 in the procedure';
end-proc;