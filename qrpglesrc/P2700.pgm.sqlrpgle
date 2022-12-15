**free

ctl-opt dftactgrp(*no);

dcl-pi P2700;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P220.rpgleinc'
/copy 'qrpgleref/P1970.rpgleinc'
/copy 'qrpgleref/P477.rpgleinc'

dcl-ds T662 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T662 FROM T662 LIMIT 1;

theCharVar = 'Hello from P2700';
dsply theCharVar;
P220();
P1970();
P477();
return;