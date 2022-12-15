**free

ctl-opt dftactgrp(*no);

dcl-pi P3842;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3432.rpgleinc'
/copy 'qrpgleref/P2959.rpgleinc'
/copy 'qrpgleref/P1821.rpgleinc'

dcl-ds T1155 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1155 FROM T1155 LIMIT 1;

theCharVar = 'Hello from P3842';
dsply theCharVar;
callp localProc();
P3432();
P2959();
P1821();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3842 in the procedure';
end-proc;