**free

ctl-opt dftactgrp(*no);

dcl-pi P306;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'

dcl-ds T473 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T473 FROM T473 LIMIT 1;

theCharVar = 'Hello from P306';
dsply theCharVar;
callp localProc();
P84();
P6();
P299();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P306 in the procedure';
end-proc;