**free

ctl-opt dftactgrp(*no);

dcl-pi P4139;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P4008.rpgleinc'
/copy 'qrpgleref/P2828.rpgleinc'

dcl-ds theTable extname('T674') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T674 LIMIT 1;

theCharVar = 'Hello from P4139';
dsply theCharVar;
callp localProc();
P148();
P4008();
P2828();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4139 in the procedure';
end-proc;