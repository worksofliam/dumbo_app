**free

ctl-opt dftactgrp(*no);

dcl-pi P1062;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P327.rpgleinc'
/copy 'qrpgleref/P531.rpgleinc'
/copy 'qrpgleref/P900.rpgleinc'

dcl-ds T457 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T457 FROM T457 LIMIT 1;

theCharVar = 'Hello from P1062';
dsply theCharVar;
callp localProc();
P327();
P531();
P900();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1062 in the procedure';
end-proc;