**free

ctl-opt dftactgrp(*no);

dcl-pi P2989;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2161.rpgleinc'
/copy 'qrpgleref/P2260.rpgleinc'
/copy 'qrpgleref/P115.rpgleinc'

dcl-ds T961 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T961 FROM T961 LIMIT 1;

theCharVar = 'Hello from P2989';
dsply theCharVar;
callp localProc();
P2161();
P2260();
P115();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2989 in the procedure';
end-proc;