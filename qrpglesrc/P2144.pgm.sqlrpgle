**free

ctl-opt dftactgrp(*no);

dcl-pi P2144;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P1989.rpgleinc'
/copy 'qrpgleref/P759.rpgleinc'

dcl-ds T97 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T97 FROM T97 LIMIT 1;

theCharVar = 'Hello from P2144';
dsply theCharVar;
P16();
P1989();
P759();
return;