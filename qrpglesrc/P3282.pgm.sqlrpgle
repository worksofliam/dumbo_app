**free

ctl-opt dftactgrp(*no);

dcl-pi P3282;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1151.rpgleinc'
/copy 'qrpgleref/P898.rpgleinc'
/copy 'qrpgleref/P1888.rpgleinc'

dcl-ds T262 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T262 FROM T262 LIMIT 1;

theCharVar = 'Hello from P3282';
dsply theCharVar;
callp localProc();
P1151();
P898();
P1888();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3282 in the procedure';
end-proc;