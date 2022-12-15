**free

ctl-opt dftactgrp(*no);

dcl-pi P5570;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P909.rpgleinc'
/copy 'qrpgleref/P1072.rpgleinc'
/copy 'qrpgleref/P924.rpgleinc'

dcl-ds T1154 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1154 FROM T1154 LIMIT 1;

theCharVar = 'Hello from P5570';
dsply theCharVar;
callp localProc();
P909();
P1072();
P924();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5570 in the procedure';
end-proc;