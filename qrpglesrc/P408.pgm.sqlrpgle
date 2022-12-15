**free

ctl-opt dftactgrp(*no);

dcl-pi P408;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'

dcl-ds T525 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T525 FROM T525 LIMIT 1;

theCharVar = 'Hello from P408';
dsply theCharVar;
callp localProc();
P158();
P29();
P67();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P408 in the procedure';
end-proc;