**free

ctl-opt dftactgrp(*no);

dcl-pi P3341;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2175.rpgleinc'
/copy 'qrpgleref/P2456.rpgleinc'
/copy 'qrpgleref/P3234.rpgleinc'

dcl-ds T340 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T340 FROM T340 LIMIT 1;

theCharVar = 'Hello from P3341';
dsply theCharVar;
callp localProc();
P2175();
P2456();
P3234();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3341 in the procedure';
end-proc;