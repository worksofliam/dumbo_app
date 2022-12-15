**free

ctl-opt dftactgrp(*no);

dcl-pi P1952;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P998.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P1009.rpgleinc'

dcl-ds T90 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T90 FROM T90 LIMIT 1;

theCharVar = 'Hello from P1952';
dsply theCharVar;
callp localProc();
P998();
P172();
P1009();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1952 in the procedure';
end-proc;