**free

ctl-opt dftactgrp(*no);

dcl-pi P2154;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P2106.rpgleinc'

dcl-ds T1091 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1091 FROM T1091 LIMIT 1;

theCharVar = 'Hello from P2154';
dsply theCharVar;
callp localProc();
P58();
P55();
P2106();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2154 in the procedure';
end-proc;