**free

ctl-opt dftactgrp(*no);

dcl-pi P1304;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P558.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds theTable extname('T283') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T283 LIMIT 1;

theCharVar = 'Hello from P1304';
dsply theCharVar;
callp localProc();
P58();
P558();
P23();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1304 in the procedure';
end-proc;