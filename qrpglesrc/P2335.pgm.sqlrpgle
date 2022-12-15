**free

ctl-opt dftactgrp(*no);

dcl-pi P2335;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P631.rpgleinc'
/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P1136.rpgleinc'

dcl-ds T303 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T303 FROM T303 LIMIT 1;

theCharVar = 'Hello from P2335';
dsply theCharVar;
P631();
P189();
P1136();
return;