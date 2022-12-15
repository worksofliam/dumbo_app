**free

ctl-opt dftactgrp(*no);

dcl-pi P220;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P144.rpgleinc'
/copy 'qrpgleref/P206.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'

dcl-ds T430 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T430 FROM T430 LIMIT 1;

theCharVar = 'Hello from P220';
dsply theCharVar;
callp localProc();
P144();
P206();
P181();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P220 in the procedure';
end-proc;