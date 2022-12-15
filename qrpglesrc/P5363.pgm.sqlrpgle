**free

ctl-opt dftactgrp(*no);

dcl-pi P5363;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2192.rpgleinc'
/copy 'qrpgleref/P435.rpgleinc'
/copy 'qrpgleref/P1776.rpgleinc'

dcl-ds T805 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T805 FROM T805 LIMIT 1;

theCharVar = 'Hello from P5363';
dsply theCharVar;
callp localProc();
P2192();
P435();
P1776();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5363 in the procedure';
end-proc;