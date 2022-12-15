**free

ctl-opt dftactgrp(*no);

dcl-pi P78;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'

dcl-ds theTable extname('T267') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T267 LIMIT 1;

theCharVar = 'Hello from P78';
dsply theCharVar;
callp localProc();
P42();
P18();
P65();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P78 in the procedure';
end-proc;