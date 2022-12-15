**free

ctl-opt dftactgrp(*no);

dcl-pi P3802;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P818.rpgleinc'
/copy 'qrpgleref/P167.rpgleinc'
/copy 'qrpgleref/P2803.rpgleinc'

dcl-ds T193 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T193 FROM T193 LIMIT 1;

theCharVar = 'Hello from P3802';
dsply theCharVar;
callp localProc();
P818();
P167();
P2803();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3802 in the procedure';
end-proc;