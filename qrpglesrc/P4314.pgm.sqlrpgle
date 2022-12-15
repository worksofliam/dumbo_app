**free

ctl-opt dftactgrp(*no);

dcl-pi P4314;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P279.rpgleinc'
/copy 'qrpgleref/P1930.rpgleinc'
/copy 'qrpgleref/P2127.rpgleinc'

dcl-ds T547 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T547 FROM T547 LIMIT 1;

theCharVar = 'Hello from P4314';
dsply theCharVar;
P279();
P1930();
P2127();
return;