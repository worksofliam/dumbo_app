**free

ctl-opt dftactgrp(*no);

dcl-pi P1842;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1397.rpgleinc'
/copy 'qrpgleref/P992.rpgleinc'
/copy 'qrpgleref/P1297.rpgleinc'

dcl-ds T682 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T682 FROM T682 LIMIT 1;

theCharVar = 'Hello from P1842';
dsply theCharVar;
callp localProc();
P1397();
P992();
P1297();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1842 in the procedure';
end-proc;