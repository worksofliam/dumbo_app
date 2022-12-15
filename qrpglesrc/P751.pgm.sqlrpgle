**free

ctl-opt dftactgrp(*no);

dcl-pi P751;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P423.rpgleinc'
/copy 'qrpgleref/P731.rpgleinc'
/copy 'qrpgleref/P691.rpgleinc'

dcl-ds T1201 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1201 FROM T1201 LIMIT 1;

theCharVar = 'Hello from P751';
dsply theCharVar;
callp localProc();
P423();
P731();
P691();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P751 in the procedure';
end-proc;