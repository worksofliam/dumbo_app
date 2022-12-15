**free

ctl-opt dftactgrp(*no);

dcl-pi P3505;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P713.rpgleinc'
/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P287.rpgleinc'

dcl-ds T177 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T177 FROM T177 LIMIT 1;

theCharVar = 'Hello from P3505';
dsply theCharVar;
callp localProc();
P713();
P382();
P287();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3505 in the procedure';
end-proc;