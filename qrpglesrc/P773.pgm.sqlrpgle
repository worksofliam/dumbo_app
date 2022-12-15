**free

ctl-opt dftactgrp(*no);

dcl-pi P773;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P458.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'

dcl-ds T1091 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1091 FROM T1091 LIMIT 1;

theCharVar = 'Hello from P773';
dsply theCharVar;
callp localProc();
P150();
P458();
P218();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P773 in the procedure';
end-proc;