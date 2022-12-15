**free

ctl-opt dftactgrp(*no);

dcl-pi P552;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P297.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'
/copy 'qrpgleref/P436.rpgleinc'

dcl-ds T1613 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1613 FROM T1613 LIMIT 1;

theCharVar = 'Hello from P552';
dsply theCharVar;
callp localProc();
P297();
P299();
P436();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P552 in the procedure';
end-proc;