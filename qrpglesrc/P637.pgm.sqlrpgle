**free

ctl-opt dftactgrp(*no);

dcl-pi P637;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P596.rpgleinc'
/copy 'qrpgleref/P447.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'

dcl-ds theTable extname('T389') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T389 LIMIT 1;

theCharVar = 'Hello from P637';
dsply theCharVar;
callp localProc();
P596();
P447();
P51();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P637 in the procedure';
end-proc;