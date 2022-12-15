**free

ctl-opt dftactgrp(*no);

dcl-pi P2376;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P427.rpgleinc'
/copy 'qrpgleref/P531.rpgleinc'
/copy 'qrpgleref/P229.rpgleinc'

dcl-ds T662 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T662 FROM T662 LIMIT 1;

theCharVar = 'Hello from P2376';
dsply theCharVar;
callp localProc();
P427();
P531();
P229();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2376 in the procedure';
end-proc;