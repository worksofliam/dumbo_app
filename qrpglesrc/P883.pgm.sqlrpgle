**free

ctl-opt dftactgrp(*no);

dcl-pi P883;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P167.rpgleinc'
/copy 'qrpgleref/P769.rpgleinc'
/copy 'qrpgleref/P268.rpgleinc'

dcl-ds T783 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T783 FROM T783 LIMIT 1;

theCharVar = 'Hello from P883';
dsply theCharVar;
callp localProc();
P167();
P769();
P268();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P883 in the procedure';
end-proc;