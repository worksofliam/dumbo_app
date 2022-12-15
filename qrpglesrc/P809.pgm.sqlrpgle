**free

ctl-opt dftactgrp(*no);

dcl-pi P809;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P612.rpgleinc'
/copy 'qrpgleref/P633.rpgleinc'
/copy 'qrpgleref/P442.rpgleinc'

dcl-ds T405 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T405 FROM T405 LIMIT 1;

theCharVar = 'Hello from P809';
dsply theCharVar;
callp localProc();
P612();
P633();
P442();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P809 in the procedure';
end-proc;