**free

ctl-opt dftactgrp(*no);

dcl-pi P2021;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1401.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P1587.rpgleinc'

dcl-ds T496 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T496 FROM T496 LIMIT 1;

theCharVar = 'Hello from P2021';
dsply theCharVar;
P1401();
P176();
P1587();
return;