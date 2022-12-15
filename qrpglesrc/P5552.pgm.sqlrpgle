**free

ctl-opt dftactgrp(*no);

dcl-pi P5552;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2734.rpgleinc'
/copy 'qrpgleref/P1323.rpgleinc'
/copy 'qrpgleref/P5060.rpgleinc'

dcl-ds T376 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T376 FROM T376 LIMIT 1;

theCharVar = 'Hello from P5552';
dsply theCharVar;
P2734();
P1323();
P5060();
return;