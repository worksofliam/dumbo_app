**free

ctl-opt dftactgrp(*no);

dcl-pi P1103;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P957.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P486.rpgleinc'

dcl-ds T1837 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1837 FROM T1837 LIMIT 1;

theCharVar = 'Hello from P1103';
dsply theCharVar;
P957();
P24();
P486();
return;