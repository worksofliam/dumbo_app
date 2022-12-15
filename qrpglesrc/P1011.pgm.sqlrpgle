**free

ctl-opt dftactgrp(*no);

dcl-pi P1011;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P531.rpgleinc'
/copy 'qrpgleref/P754.rpgleinc'
/copy 'qrpgleref/P687.rpgleinc'

dcl-ds T91 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T91 FROM T91 LIMIT 1;

theCharVar = 'Hello from P1011';
dsply theCharVar;
callp localProc();
P531();
P754();
P687();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1011 in the procedure';
end-proc;