**free

ctl-opt dftactgrp(*no);

dcl-pi P5378;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1505.rpgleinc'
/copy 'qrpgleref/P3228.rpgleinc'
/copy 'qrpgleref/P3429.rpgleinc'

dcl-ds T277 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T277 FROM T277 LIMIT 1;

theCharVar = 'Hello from P5378';
dsply theCharVar;
P1505();
P3228();
P3429();
return;