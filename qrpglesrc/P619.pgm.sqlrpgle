**free

ctl-opt dftactgrp(*no);

dcl-pi P619;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P518.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'

dcl-ds theTable extname('T316') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T316 LIMIT 1;

theCharVar = 'Hello from P619';
dsply theCharVar;
callp localProc();
P518();
P101();
P131();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P619 in the procedure';
end-proc;