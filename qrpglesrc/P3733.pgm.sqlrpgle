**free

ctl-opt dftactgrp(*no);

dcl-pi P3733;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2013.rpgleinc'
/copy 'qrpgleref/P3714.rpgleinc'
/copy 'qrpgleref/P1009.rpgleinc'

dcl-ds T1232 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1232 FROM T1232 LIMIT 1;

theCharVar = 'Hello from P3733';
dsply theCharVar;
P2013();
P3714();
P1009();
return;