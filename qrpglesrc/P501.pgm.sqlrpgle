**free

ctl-opt dftactgrp(*no);

dcl-pi P501;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P434.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'

dcl-ds T365 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T365 FROM T365 LIMIT 1;

theCharVar = 'Hello from P501';
dsply theCharVar;
callp localProc();
P434();
P218();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P501 in the procedure';
end-proc;