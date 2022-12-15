**free

ctl-opt dftactgrp(*no);

dcl-pi P281;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'

dcl-ds T267 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T267 FROM T267 LIMIT 1;

theCharVar = 'Hello from P281';
dsply theCharVar;
callp localProc();
P69();
P67();
P181();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P281 in the procedure';
end-proc;