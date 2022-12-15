**free

ctl-opt dftactgrp(*no);

dcl-pi P1064;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P964.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P782.rpgleinc'

dcl-ds T341 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T341 FROM T341 LIMIT 1;

theCharVar = 'Hello from P1064';
dsply theCharVar;
callp localProc();
P964();
P117();
P782();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1064 in the procedure';
end-proc;