**free

ctl-opt dftactgrp(*no);

dcl-pi P3606;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1948.rpgleinc'
/copy 'qrpgleref/P467.rpgleinc'
/copy 'qrpgleref/P2069.rpgleinc'

dcl-ds T360 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T360 FROM T360 LIMIT 1;

theCharVar = 'Hello from P3606';
dsply theCharVar;
P1948();
P467();
P2069();
return;