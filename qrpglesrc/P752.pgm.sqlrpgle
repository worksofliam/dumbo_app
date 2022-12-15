**free

ctl-opt dftactgrp(*no);

dcl-pi P752;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P725.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P442.rpgleinc'

dcl-ds T40 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T40 FROM T40 LIMIT 1;

theCharVar = 'Hello from P752';
dsply theCharVar;
callp localProc();
P725();
P16();
P442();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P752 in the procedure';
end-proc;