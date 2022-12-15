**free

ctl-opt dftactgrp(*no);

dcl-pi P5089;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3216.rpgleinc'
/copy 'qrpgleref/P1988.rpgleinc'
/copy 'qrpgleref/P2661.rpgleinc'

dcl-ds T47 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T47 FROM T47 LIMIT 1;

theCharVar = 'Hello from P5089';
dsply theCharVar;
callp localProc();
P3216();
P1988();
P2661();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5089 in the procedure';
end-proc;