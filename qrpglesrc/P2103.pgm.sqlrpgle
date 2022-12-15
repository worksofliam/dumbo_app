**free

ctl-opt dftactgrp(*no);

dcl-pi P2103;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P960.rpgleinc'
/copy 'qrpgleref/P1751.rpgleinc'
/copy 'qrpgleref/P1870.rpgleinc'

dcl-ds T117 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T117 FROM T117 LIMIT 1;

theCharVar = 'Hello from P2103';
dsply theCharVar;
callp localProc();
P960();
P1751();
P1870();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2103 in the procedure';
end-proc;