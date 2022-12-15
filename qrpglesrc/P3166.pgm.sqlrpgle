**free

ctl-opt dftactgrp(*no);

dcl-pi P3166;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1786.rpgleinc'
/copy 'qrpgleref/P2186.rpgleinc'
/copy 'qrpgleref/P781.rpgleinc'

dcl-ds T1089 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1089 FROM T1089 LIMIT 1;

theCharVar = 'Hello from P3166';
dsply theCharVar;
P1786();
P2186();
P781();
return;