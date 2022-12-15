**free

ctl-opt dftactgrp(*no);

dcl-pi P3288;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2995.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P658.rpgleinc'

dcl-ds T1185 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1185 FROM T1185 LIMIT 1;

theCharVar = 'Hello from P3288';
dsply theCharVar;
callp localProc();
P2995();
P218();
P658();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3288 in the procedure';
end-proc;