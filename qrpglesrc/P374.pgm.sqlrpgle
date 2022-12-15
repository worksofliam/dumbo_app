**free

ctl-opt dftactgrp(*no);

dcl-pi P374;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P189.rpgleinc'

dcl-ds T255 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T255 FROM T255 LIMIT 1;

theCharVar = 'Hello from P374';
dsply theCharVar;
callp localProc();
P223();
P12();
P189();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P374 in the procedure';
end-proc;