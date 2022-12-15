**free

ctl-opt dftactgrp(*no);

dcl-pi P5327;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P772.rpgleinc'
/copy 'qrpgleref/P1056.rpgleinc'

dcl-ds T117 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T117 FROM T117 LIMIT 1;

theCharVar = 'Hello from P5327';
dsply theCharVar;
P278();
P772();
P1056();
return;