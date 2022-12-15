**free

ctl-opt dftactgrp(*no);

dcl-pi P2395;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1776.rpgleinc'
/copy 'qrpgleref/P1973.rpgleinc'
/copy 'qrpgleref/P2091.rpgleinc'

dcl-ds T555 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T555 FROM T555 LIMIT 1;

theCharVar = 'Hello from P2395';
dsply theCharVar;
P1776();
P1973();
P2091();
return;