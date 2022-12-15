**free

ctl-opt dftactgrp(*no);

dcl-pi P903;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P798.rpgleinc'
/copy 'qrpgleref/P696.rpgleinc'
/copy 'qrpgleref/P846.rpgleinc'

dcl-ds theTable extname('T55') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T55 LIMIT 1;

theCharVar = 'Hello from P903';
dsply theCharVar;
callp localProc();
P798();
P696();
P846();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P903 in the procedure';
end-proc;