**free

ctl-opt dftactgrp(*no);

dcl-pi P668;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P230.rpgleinc'
/copy 'qrpgleref/P312.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'

dcl-ds T113 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T113 FROM T113 LIMIT 1;

theCharVar = 'Hello from P668';
dsply theCharVar;
callp localProc();
P230();
P312();
P175();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P668 in the procedure';
end-proc;