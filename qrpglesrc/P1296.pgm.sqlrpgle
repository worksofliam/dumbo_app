**free

ctl-opt dftactgrp(*no);

dcl-pi P1296;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1270.rpgleinc'
/copy 'qrpgleref/P830.rpgleinc'
/copy 'qrpgleref/P733.rpgleinc'

dcl-ds T439 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T439 FROM T439 LIMIT 1;

theCharVar = 'Hello from P1296';
dsply theCharVar;
callp localProc();
P1270();
P830();
P733();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1296 in the procedure';
end-proc;