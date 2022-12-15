**free

ctl-opt dftactgrp(*no);

dcl-pi P744;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P377.rpgleinc'
/copy 'qrpgleref/P554.rpgleinc'
/copy 'qrpgleref/P274.rpgleinc'

dcl-ds T187 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T187 FROM T187 LIMIT 1;

theCharVar = 'Hello from P744';
dsply theCharVar;
callp localProc();
P377();
P554();
P274();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P744 in the procedure';
end-proc;