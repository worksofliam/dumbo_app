**free

ctl-opt dftactgrp(*no);

dcl-pi P3819;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2085.rpgleinc'
/copy 'qrpgleref/P1820.rpgleinc'
/copy 'qrpgleref/P1725.rpgleinc'

dcl-ds T1626 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1626 FROM T1626 LIMIT 1;

theCharVar = 'Hello from P3819';
dsply theCharVar;
callp localProc();
P2085();
P1820();
P1725();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3819 in the procedure';
end-proc;