**free

ctl-opt dftactgrp(*no);

dcl-pi P1092;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P344.rpgleinc'
/copy 'qrpgleref/P377.rpgleinc'

dcl-ds T138 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T138 FROM T138 LIMIT 1;

theCharVar = 'Hello from P1092';
dsply theCharVar;
callp localProc();
P218();
P344();
P377();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1092 in the procedure';
end-proc;