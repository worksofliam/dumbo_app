**free

ctl-opt dftactgrp(*no);

dcl-pi P3089;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2229.rpgleinc'
/copy 'qrpgleref/P1995.rpgleinc'
/copy 'qrpgleref/P245.rpgleinc'

dcl-ds T339 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T339 FROM T339 LIMIT 1;

theCharVar = 'Hello from P3089';
dsply theCharVar;
callp localProc();
P2229();
P1995();
P245();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3089 in the procedure';
end-proc;