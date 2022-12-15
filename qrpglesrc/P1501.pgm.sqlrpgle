**free

ctl-opt dftactgrp(*no);

dcl-pi P1501;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P781.rpgleinc'
/copy 'qrpgleref/P392.rpgleinc'
/copy 'qrpgleref/P434.rpgleinc'

dcl-ds T956 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T956 FROM T956 LIMIT 1;

theCharVar = 'Hello from P1501';
dsply theCharVar;
P781();
P392();
P434();
return;